# ASRI COLLECTION — MOBILE STOREFRONT APPLICATION

## ROLE
Act as a Senior Frontend Engineer, Mobile UI/UX Designer, and React Application Architect.

## CONTEXT
Build a mobile-only online fashion storefront application named **Asri Collection**.

The application represents a single independent fashion store with its own brand identity.

## MISSION
Create a complete, modern, minimalist, and responsive storefront UI using React, TypeScript, and CSS.

## OBJECTIVE
Deliver a functional mobile shopping storefront with a clean interface, intuitive navigation, and consistent UI components.

## TECHNOLOGY
- React
- TypeScript
- CSS
- Lucide Icons

## PLATFORM CONSTRAINTS
1. Mobile-only application.
2. Maximum application width: 500px.
3. Center the application horizontally on desktop screens.
4. On mobile, occupy the full available screen width.
5. Use a single React application.
6. Maintain a consistent application shell.

## APPLICATION STRUCTURE

App
├── AppShell
│   ├── Header
│   │   ├── BrandName
│   │   ├── Cart
│   │   └── Profile
│   ├── Content
│   │   └── Page
│   └── BottomNav
│       ├── Home
│       ├── Catalog
│       └── Livechat
│
├── Pages
│   ├── HomePage
│   ├── CatalogPage
│   ├── ProductDetailPage
│   ├── CartPage
│   ├── ProfilePage
│   └── LivechatPage
│
└── Global
    ├── Components
    ├── Icons
    └── Styles

## DESIGN SYSTEM

Design direction: Minimalist Modern.

Visual principles:
- Clean and elegant interface.
- Simple layouts.
- Clear visual hierarchy.
- Consistent spacing.
- Readable typography.
- Subtle borders and shadows.
- Consistent icon sizing.
- Product-focused presentation.

Use Lucide Icons for interface icons.

## CORE REQUIREMENTS

### 1. Header
- Display Asri Collection branding.
- Provide Cart navigation.
- Provide Profile navigation.

### 2. HomePage
- Storefront landing page.
- Promotional banner section.
- Featured products.
- Product categories.
- Product card components.

### 3. CatalogPage
- Product listing.
- Product images.
- Product names.
- Product prices.
- Category navigation.

### 4. ProductDetailPage
- Product image gallery.
- Product information.
- Price.
- Product variants where applicable.
- Add to Cart action.

### 5. CartPage
- Shopping cart items.
- Product quantity controls.
- Subtotal.
- Checkout action.

### 6. ProfilePage
- Customer profile interface.
- Basic account information.
- Profile navigation options.

### 7. LivechatPage
- Customer service chat interface.
- Message history layout.
- Message input area.

### 8. BottomNav
Display three navigation items:
- Home
- Catalog
- Livechat

Keep the active navigation state visually distinguishable.

## APPLICATION BEHAVIOR
- Navigation must work.
- Product cards must be interactive.
- Product detail navigation must work.
- Add to Cart must update cart state.
- Quantity controls must work.
- Cart data must remain available while navigating between pages.
- Profile and Livechat must be accessible.
- All interactive elements must have appropriate feedback.

## IMPLEMENTATION RULES
1. Build the actual React application, not a static mockup.
2. Use reusable components.
3. Use TypeScript types.
4. Maintain consistent styling.
5. Use Lucide icons instead of emoji icons.
6. Avoid unnecessary dependencies.
7. Avoid unnecessary features.
8. Do not create desktop-specific layouts.
9. Do not introduce backend integrations or payment integrations.
10. Do not leave TODOs, pseudocode, or nonfunctional controls.

## SCOPE
This version focuses exclusively on the mobile storefront UI and its frontend interactions.

Do not add:
- Admin dashboard.
- Seller management.
- Marketplace functionality.
- Backend services.
- Payment gateway integration.
- Unrequested features.

## OUTPUT
Build the complete Asri Collection mobile storefront application directly in Gemini Canvas.

Ensure the application runs, navigation works, components are consistent, and all core interactions function correctly.

## VALIDATION
Before completing:
- Verify all six pages.
- Verify Header navigation.
- Verify BottomNav navigation.
- Verify product detail navigation.
- Verify Add to Cart.
- Verify cart quantity updates.
- Verify mobile-only layout.
- Verify TypeScript correctness.
- Fix runtime and rendering errors.

## FINAL RESULT
A functional, polished, minimalist mobile-only fashion storefront for Asri Collection.
