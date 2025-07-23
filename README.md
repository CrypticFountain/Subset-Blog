# Subset.tv Blog

A Jekyll-powered blog for Subset.tv featuring a modern, engaging homepage designed to orient new visitors, guide regular readers, and serve as a launchpad for community engagement.

## Features

### Homepage Sections
- **Hero Section**: Eye-catching gradient background with clear value proposition
- **Featured Post**: Highlights the most important or timely article
- **Recent Posts**: Grid layout of the latest 3 blog posts
- **Curated Content Blocks**: Three distinct sections guiding users to different content types
- **Explore by Show**: Tag cloud of popular TV shows
- **Final Call-to-Action**: Encourages subset creation

### Design
- Modern, card-based layout
- Responsive design that works on all devices
- Clean typography using Inter font
- Gradient backgrounds and smooth hover effects
- Optimized for readability and engagement

## Getting Started

### Prerequisites
- Docker and Docker Compose installed on your system

### Running the Blog

1. **Start the development server:**
   ```bash
   docker-compose up --build
   ```

2. **Access the blog:**
   - Homepage: http://localhost:4000
   - LiveReload enabled for hot reloading during development

3. **Stop the server:**
   ```bash
   docker-compose down
   ```

## Project Structure

```
Subset-Blog/
├── _layouts/
│   └── subset_home.html      # Custom homepage layout
├── _posts/                   # Blog posts
├── assets/
│   ├── css/
│   │   └── subset-style.css  # Custom styles
│   └── images/               # Blog images
├── _config.yml               # Jekyll configuration
├── index.md                  # Homepage content
├── Dockerfile                # Docker configuration
├── docker-compose.yml        # Docker Compose setup
└── README.md                 # This file
```

## Creating Content

### Blog Posts
Create new posts in the `_posts` directory using the format:
```
YYYY-MM-DD-post-title.md
```

### Front Matter Example
```yaml
---
layout: post
title: "Your Post Title"
date: 2025-01-22 20:30:00 -0700
categories: [category1, category2]
tags: [tag1, tag2, tag3]
image: /assets/images/your-image.jpg
excerpt: "Brief description of your post..."
---
```

### Featured Post
Update the featured post in `index.md` front matter:
```yaml
featured_post:
  title: "Your Featured Post Title"
  excerpt: "Description of the featured post..."
  image: "/assets/images/featured-image.jpg"
  category: "Post Category"
  url: "/posts/your-post-url/"
```

## Customization

### Colors and Styling
Edit `assets/css/subset-style.css` to customize:
- Color scheme (currently uses purple/blue gradients)
- Typography
- Layout spacing
- Button styles

### Homepage Content
Modify `_layouts/subset_home.html` to:
- Update section titles and descriptions
- Change call-to-action buttons
- Modify the curated content blocks
- Update show tags

### Configuration
Edit `_config.yml` for:
- Site title and description
- Contact information
- Plugin configuration
- Custom collections

## Development Notes

- The blog runs in a Docker container to avoid Ruby native extension compilation issues on Apple Silicon Macs
- Hot reload is enabled for development
- All dependencies are managed through the Docker environment
- The custom layout provides a complete homepage experience optimized for the Subset.tv brand

## Content Strategy

The homepage is designed to serve three key purposes:
1. **Orient new visitors** - Clear hero section and value proposition
2. **Guide regular readers** - Recent posts and curated content blocks
3. **Serve as a launchpad** - Multiple calls-to-action for community engagement

Perfect for showcasing TV show analysis, subset creation guides, and community spotlights!
