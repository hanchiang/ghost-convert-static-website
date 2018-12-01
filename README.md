## Introduction
This project contains scripts to convert a local ghost website into a static website, which can then be uploaded to a static web host.

## Features
1. Use `wget` to download target website into a static website
    1. Recursively download the entire website
    2. Recursive download sitemaps by first downloading `/sitemap.xml`, parsing and downloading the individual sitemap files
2. Remove query hash from `css` and `js` filename (*ghost specific*)
3. Replace query hash entities from `css` and `js` references in `index.html` files (*ghost specific*)
4. Replace http with https
5. Replace localhost links with live domain
6. Prettify url using directory name instead of index.html(e.g. /about instead of /about/index.html, / instead of /index.html)

## Usage
Run `./build_static_website`, which prompts you for your localhost website and your live  website.  

**Example**  
`Enter the domain of your localhost server:` localhost:2368  
`Enter the domain of your live website:` mysite.com

## Output
A copy of the static website is written to the path `../ghost-static-generated/`.  
Upload it to a static web host!
