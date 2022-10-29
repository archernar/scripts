public class ANSI {

    static final String RESETONLY = "\u001B[0m";
    static final String BLACK = "\u001B[30m";
    static final String RED = "\u001B[31m";
    static final String GREEN = "\u001B[32m";
    static final String YELLOW = "\u001B[33m";
    static final String BLUE = "\u001B[34m";
    static final String DATA = "\u001B[30m\u001B[47m";
    static final String PURPLE = "\u001B[35m";
    static final String CYAN = "\u001B[36m";
    static final String WHITE = "\u001B[37m";

    static final String BLACK_BACKGROUND = "\u001B[40m";
    static final String RED_BACKGROUND = "\u001B[41m";
    static final String GREEN_BACKGROUND = "\u001B[42m";
    static final String YELLOW_BACKGROUND = "\u001B[43m";
    static final String BLUE_BACKGROUND = "\u001B[44m";
    static final String PURPLE_BACKGROUND = "\u001B[45m";
    static final String CYAN_BACKGROUND = "\u001B[46m";
    static final String WHITE_BACKGROUND = "\u001B[47m";

    static final String BLACK_BOLD = "\033[1;30m";
    static final String RED_BOLD = "\033[1;31m";
    static final String GREEN_BOLD = "\033[1;32m";
    static final String YELLOW_BOLD = "\033[1;33m";
    static final String BLUE_BOLD = "\033[1;34m";
    static final String PURPLE_BOLD = "\033[1;35m";
    static final String CYAN_BOLD = "\033[1;36m";
    static final String WHITE_BOLD = "\033[1;37m";

    static final String BLACK_UNDERLINED = "\033[4;30m";
    static final String RED_UNDERLINED = "\033[4;31m";
    static final String GREEN_UNDERLINED = "\033[4;32m";
    static final String YELLOW_UNDERLINED = "\033[4;33m";
    static final String BLUE_UNDERLINED = "\033[4;34m";
    static final String PURPLE_UNDERLINED = "\033[4;35m";
    static final String CYAN_UNDERLINED = "\033[4;36m";
    static final String WHITE_UNDERLINED = "\033[4;37m";

    static final String CLEAR = "\033[2J";
    static final String EOL = "\033[0K";
    static final String RESET = RESETONLY + BLACK_BACKGROUND + WHITE;
}

// https://stackoverflow.com/questions/5762491/how-to-print-color-in-console-using-system-out-println
//
