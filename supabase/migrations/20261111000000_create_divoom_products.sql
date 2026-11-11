-- Divoom products table
-- Source of truth: inspected public.divoom_products schema in Supabase project
-- mvwflakurihhakdrlteg (2026-11-11).
--
-- This single migration supports both fresh databases and environments where
-- public.divoom_products already exists. Existing tables are extended safely.

CREATE TABLE IF NOT EXISTS public.divoom_products (
  id text NOT NULL DEFAULT (gen_random_uuid())::text,
  item_group_id text NOT NULL,
  title text NOT NULL,
  description text,
  rich_text_description text,
  availability text,
  condition text,
  price bigint NOT NULL,
  sale_price bigint,
  link text,
  image_link text,
  additional_image_link jsonb NOT NULL DEFAULT '[]'::jsonb,
  brand text,
  google_product_category text,
  product_type text,
  color text,
  size text,
  material text,
  pattern text,
  gender text,
  age_group text,
  additional_variant_attribute text,
  rating numeric(2,1) NOT NULL DEFAULT 0.0,
  like_count integer NOT NULL DEFAULT 0,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now(),

  CONSTRAINT divoom_products_pkey PRIMARY KEY (id),
  CONSTRAINT divoom_products_price_check CHECK (price >= 0),
  CONSTRAINT divoom_products_sale_price_check
    CHECK (sale_price IS NULL OR sale_price >= 0),
  CONSTRAINT divoom_products_rating_check CHECK (rating >= 0 AND rating <= 5),
  CONSTRAINT divoom_products_like_count_check CHECK (like_count >= 0)
);

-- Also add the fields when this migration is run against an existing table.
ALTER TABLE public.divoom_products
  ADD COLUMN IF NOT EXISTS rating numeric(2,1) NOT NULL DEFAULT 0.0,
  ADD COLUMN IF NOT EXISTS like_count integer NOT NULL DEFAULT 0;

-- Ensure constraints exist even when the table pre-dates this migration.
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'divoom_products_rating_check'
      AND conrelid = 'public.divoom_products'::regclass
  ) THEN
    ALTER TABLE public.divoom_products
      ADD CONSTRAINT divoom_products_rating_check
      CHECK (rating >= 0 AND rating <= 5);
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'divoom_products_like_count_check'
      AND conrelid = 'public.divoom_products'::regclass
  ) THEN
    ALTER TABLE public.divoom_products
      ADD CONSTRAINT divoom_products_like_count_check
      CHECK (like_count >= 0);
  END IF;
END
$$;

ALTER TABLE public.divoom_products ENABLE ROW LEVEL SECURITY;
