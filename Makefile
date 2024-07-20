vpath %.cpp src 
vpath %.hpp includes

run: main.exe
	@./$^

main.exe: main.cpp globals.hpp
	@echo "findout main.cpp"
	@$(CXX) $^ -o $@

.PHONY: clean
clean:
	rm -r *.exe

print-%:
	@echo $(subst print-,,$@)

