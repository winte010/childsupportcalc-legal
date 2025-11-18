#!/bin/bash

echo "=== SEO Validation Script ==="
echo ""

echo "1. Checking robots.txt..."
curl -s https://childsupportcalc.junotech.app/robots.txt | head -10
echo ""

echo "2. Checking sitemap.xml..."
curl -s https://childsupportcalc.junotech.app/sitemap.xml | head -20
echo ""

echo "3. Checking security headers..."
curl -I https://childsupportcalc.junotech.app/ 2>&1 | grep -i "x-frame-options\|x-content-type-options\|strict-transport-security\|content-security-policy"
echo ""

echo "4. Checking universal links file..."
curl -s https://childsupportcalc.junotech.app/.well-known/apple-app-site-association | head -15
echo ""

echo "5. Checking manifest.json..."
curl -s https://childsupportcalc.junotech.app/manifest.json
echo ""

echo "=== Validation Complete ==="
echo ""
echo "Manual validation steps:"
echo "- Test schemas at https://validator.schema.org/"
echo "- Test social cards at Facebook and Twitter validators"
echo "- Run Lighthouse audit in Chrome DevTools"
echo "- Test on iOS device for smart banner"
