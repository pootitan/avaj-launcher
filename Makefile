NAME = avajlaunch
MAIN_CLASS = AvajLaunch
TARGET = resources/scenario.txt # make run TARGET=XXX
SIMU = simulation.txt

JC = javac
JAVA = java
JFLAGS = -d .

SRC_DIR = srcs
SRCS = $(wildcard $(SRC_DIR)/*.java)

.PHONY: all clean fclean re qre

all: $(NAME)

$(NAME):
	@$(JC) $(JFLAGS) $(SRCS)
	@echo "\033[32mJava compiled\033[0m"
run:
	@$(JAVA) $(NAME).$(MAIN_CLASS) $(TARGET)

clean:
	@rm -rf $(NAME)
	@rm -rf $(SIMU)
	@echo "\033[31mPackage clean\033[0m"

re: clean all