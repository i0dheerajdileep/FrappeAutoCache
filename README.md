# FrappeAutoCache

## Description:

FrappeAutoCache is an open-source utility crafted to enhance the Frappe framework development experience. This tool automates the cache clearing process whenever an HTML file is modified, ensuring a seamless and efficient workflow for Frappe-based projects.

### Key Features:

- **Automated Cache Clearing:** Leverages inotify-tools (Linux) to detect changes in Frappe HTML files and automatically executes the `bench clear-cache` command.

- **Flexibility and Customization:** Easily adapt the tool to your Frappe project structure by configuring the directory containing HTML files.

### Getting Started:

1. **Install Dependencies:**
    ```bash
    sudo apt-get install inotify-tools
    ```

2. **Run the Tool:**

    Open a terminal and navigate to your Frappe bench directory:

    ```bash
    cd /path/to/your/frappe/bench
    ```

    Then run the following command:

    ```bash
    while inotifywait -e close_write your_html_directory/*.html; do
        bench clear-cache
    done
    ```

    Replace `your_html_directory` with the actual path to your Frappe HTML files.

    Keep this terminal open to continuously monitor HTML file changes.

3. **Contribute:**
   - Fork the repository.
   - Contribute enhancements or bug fixes.
   - Submit pull requests to contribute to the FrappeAutoCache project.

### Contribute:

Contributions are encouraged! Report issues, propose improvements, or add new features to enhance the Frappe development community's experience.

### License:

This project is licensed under the [MIT License](LICENSE).

---

Feel free to adjust the name, description, and features based on your project's specific focus and goals related to the Frappe framework.
