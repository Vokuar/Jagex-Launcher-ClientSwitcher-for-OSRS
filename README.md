## Client Switcher

This utility allows you to easily switch between two different clients for playing a game called RuneScape. The two clients supported by this utility are:

1. **HDOS**: An external RuneScape client that aims to recreate the graphics and gameplay experience of RuneScape's High Detail mode. The client provides players with a more immersive gameplay experience by offering better graphics, faster performance, and additional customization options.
2. **RuneLite**: A third-party RuneScape client that provides players with additional features and customization options. The client is designed to enhance the gameplay experience with features such as improved UI elements and plugins, as well as performance enhancements that allow for smoother gameplay.

### Installation

1. Download the latest installer for the utility from the [releases page](https://github.com/Vokuar/Jagex-Launcher-ClientSwitcher-for-OSRS/releases/).
2. Run the installer and follow the prompts to install the utility.
3. The installer will automatically install the HDOS and RuneLite clients and will set up the utility to use the correct installation paths.

### Usage

1. Download and run the `clientswitcher.cmd` file found in the code section to run the script.
2. Enter the client you want to switch to when prompted (either "hdos" or "runelite").
3. The script will automatically copy the required files to the app data folder for RuneLite and rename them accordingly.
4. The `client.txt` file in the RuneLite app data folder will be updated with the name of the currently running client.

To switch back to the previous client, simply run the `clientswitcher.cmd` file again and choose the other client.

### Uninstallation

1. Switch to the default RuneScape client before uninstalling the utility.
2. Run the `uninstall.cmd` script from the directory where the utility was installed.
3. The script will remove the HDOS and RuneLite files and restore the original RuneLite installation.

If you encounter any issues with the utility, please open an issue on the [GitHub repository](https://github.com/Vokuar/Jagex-Launcher-ClientSwitcher-for-OSRS/issues) with a detailed description of the problem.

### Troubleshooting

If you encounter any issues with the utility, please refer to the following troubleshooting steps:

- If the script fails to copy the required files or rename them, check that the HDOS and RuneLite installation paths are set up correctly in the `clientswitcher.cmd` file.
- If the script fails to switch the client, make sure that the `client.txt` file in the RuneLite app data folder is not set to "hdos" or "runelite".
- If you encounter any other issues, please open an issue on the [GitHub repository](https://github.com/Vokuar/Jagex-Launcher-ClientSwitcher-for-OSRS/issues) with a detailed description of the problem.

### Contributions

Contributions to the Client Switcher utility are welcome. If you want to contribute to the project, please fork the repository and make a pull request with your changes. 

### License

The Client Switcher utility is released under the [MIT License](https://github.com/Vokuar/Jagex-Launcher-ClientSwitcher-for-OSRS/blob/main/LICENSE).

### Conclusion

The Client Switcher utility makes it easy for RuneScape players to switch between two different clients - HDOS and RuneLite - depending on their needs. With the installer and easy-to-use script, players can switch between clients quickly and easily, without having to manually copy files or modify settings.

If you encounter any issues or have any suggestions for improvement, please open an issue on the GitHub repository page. Thank you for using the Client Switcher utility!
