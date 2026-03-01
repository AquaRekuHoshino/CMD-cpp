#include <iostream>
#include <string>
#include <filesystem>

using namespace std;

int main() {
    string command;
    std::filesystem::path exePath = std::filesystem::current_path();
    while (true) {
        cout << exePath << "> ";
        getline(cin, command);

        // Separar comando y argumentos
        size_t pos = command.find(' ');
        string cmd = command.substr(0, pos);
        string args = (pos != string::npos) ? command.substr(pos + 1) : "";

        if (cmd == "clear") {
            system("cls");
        }
        else if (cmd == "print") {
            cout << args << endl;
        }
        else if (cmd == "exit") {
            break;
        }
        else if (command == "help") {
            cout << "==================== CMD++ HELP ====================\n";
            cout << "print <texto>   -> Imprime el texto despues del comando\n";
            cout << "clear           -> Limpia la pantalla\n";
            cout << "exit            -> Cierra el programa\n";
            cout << "help            -> Muestra esta ayuda\n";
            cout << "====================================================\n";
        }
        else {
            cout << "El comando no existe o no es un comando CMD++" << endl;
        }
    }

    return 0;
}