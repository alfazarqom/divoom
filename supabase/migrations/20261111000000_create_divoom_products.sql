-- Divoom products table
-- Source of truth: inspected public.divoom_products schema in Supabase project
-- mvwflakurihhakdrlteg (2026-11-11).
--
-- IF NOT EXISTS makes this migration safe to apply to an environment where
-- the table has already been created. It does not alter an existing table.

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
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now(),

  CONSTRAINT divoom_products_pkey PRIMARY KEY (id),
  CONSTRAINT divoom_products_price_check CHECK (price >= 0),
  CONSTRAINT divoom_products_sale_price_check
    CHECK (sale_price IS NULL OR sale_price >= 0)
);

ALTER TABLE public.divoom_products ENABLE ROW LEVEL SECURITY;
