# Start here — project execution order

1. Read `README.md`.
2. Choose a credible, documented EV dataset and replace the illustrative CSV. Keep a source URL and retrieval date.
3. Inspect and clean the data with Python/Pandas; document duplicates, missing values, data types and exclusions.
4. Align `sql/schema.sql` to the actual dataset, create the MySQL table and import the cleaned data.
5. Run `sql/ev_analysis.sql`; save query outputs/screenshots for your report.
6. Connect Tableau to MySQL (or the cleaned CSV if your environment cannot connect to MySQL) and build unique worksheets, filters, a dashboard and a 3-scene story.
7. Publish the actual dashboard/story on Tableau Public. The website already embeds the supplied dashboard URL; replace it if your final published view changes.
8. Run `python app.py`, test desktop/mobile widths and verify the Tableau iframe loads.
9. Fill `docs/PROJECT_REPORT_TEMPLATE.md`, add genuine screenshots and record a demo video.
10. Create a public GitHub repository and push the project using the README instructions.

**Do not submit the illustrative CSV as real EV market evidence or invent analysis findings.**
