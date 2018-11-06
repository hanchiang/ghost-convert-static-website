## Introduction
This project contains scripts to convert a local ghost website into a static website, which can then be uploaded to a static web host.

## Features
1. Use `wget` to download target website into a static website
2. Remove query hash from `css` and `js` filename
3. Replace query hash entities from `css` and `js` references in `index.html` files
4. Replace http with https
5. Replace localhost with live domain for links(SEO)
6. Prettify url using directory name instead of index.html(e.g. /about instead of /about/index.html, / instead of /index.html)

## Usage
Run `./build_static_website`, which prompts you for your localhost website and your live  website.  

**Example**  
`Enter the domain of your localhost server:` localhost:2368  
`Enter the domain of your live website:` mysite.com

## Output
A copy of the static website is written to the `static_website/` directory.  
Upload it to a static web host!