# EV Market Intelligence — Tableau + SQL + Flask

A responsive dark-themed portfolio site for an Electric Vehicle market analysis project. The Flask page embeds the Tableau Public dashboard supplied for this project.

## Live Tableau dashboard
- Dashboard: https://public.tableau.com/app/profile/himanshi.ahuja1809/viz/Book1_17930371170050/EVMarketPerformaceDashboard?publish=yes
- Embedded view is configured in `templates/index.html`. If Tableau changes the view slug, update the iframe `src`.

## Important data-quality warning
`data/ev_market_sample_illustrative.csv` is illustrative sample data, not verified real-world EV market data. Do not report its values as factual findings. Before final submission, replace it with a properly sourced dataset and document the source URL, access date, row count, fields and limitations. The supplied Tableau workbook is separate from this starter repository; this project does not claim to have edited that workbook.

## Stack
Python, Flask, Pandas, MySQL, SQL, Tableau Public, HTML/CSS, Git/GitHub.

## Run locally
1. Install Python 3.10 or newer.
2. Extract this ZIP and open a terminal in the `ev_market_analysis_starter` folder.
3. Create a virtual environment:
   - Windows: `python -m venv .venv` then `.venv\\Scripts\\activate`
   - macOS/Linux: `python3 -m venv .venv` then `source .venv/bin/activate`
4. Install: `pip install -r requirements.txt`
5. Start: `python app.py`
6. Open `http://127.0.0.1:5000`.

The website needs internet access to load the Tableau embed and Google Fonts. If the embed is blocked, use the direct Tableau link above.

## Database and SQL workflow
1. Open MySQL Workbench and run `sql/schema.sql`.
2. Import the cleaned, sourced CSV into `ev_market_db.ev_vehicles` (ensure the CSV columns match the schema).
3. Run `sql/ev_analysis.sql`.
4. Validate imported row count and missing/duplicate records before interpreting results.
5. Update the schema and SQL if your chosen dataset has different columns.

## Tableau build checklist
Recommended views: KPI tiles (records/sales/range/rating, where available), sales by vehicle category, sales by manufacturer, annual trend, battery technology distribution, average driving range by category, ratings by manufacturer, manufacturing country map/bar chart. Add filters for year, category, manufacturer, battery technology and country only where the data supports them. Create a 3-scene Story: Market overview → Battery & range → Customer & geography. Do not fabricate KPIs or conclusions.

## Publish / embed
1. Publish the workbook to Tableau Public.
2. Open the exact dashboard view and confirm it is publicly accessible.
3. Copy its view URL and replace the iframe URL in `templates/index.html` if the dashboard slug differs.
4. For a separate Tableau Story, publish it and replace the story section with that Story's exact view URL. Until then, the page intentionally links to the supplied dashboard rather than embedding a made-up Story URL.

## GitHub publishing
1. Sign in to GitHub and create a **Public** repository named `ev-market-intelligence`.
2. Do not upload passwords, database credentials, `.env`, or private data.
3. In a terminal in the project folder:
   ```bash
   git init
   git add .
   git commit -m "Build EV market intelligence dashboard site"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/ev-market-intelligence.git
   git push -u origin main
   ```
4. Replace `YOUR-USERNAME` with your GitHub username. Your repository URL will then be `https://github.com/YOUR-USERNAME/ev-market-intelligence`.

## Final submission evidence
Add real screenshots of the final Tableau dashboard, SQL query outputs, Flask website, and tests to `screenshots/`. Complete `docs/PROJECT_REPORT_TEMPLATE.md`. Record actual dataset row count, actual filter behavior and actual load-time measurements; do not guess these values. Record a short end-to-end demo showing data source → cleaning → MySQL/SQL → Tableau → Flask site.
