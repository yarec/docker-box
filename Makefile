
DIRS := $(shell find . -maxdepth 1 -type d|sed s@./@@g | sed /samples/d |sed 1d)

# Everything after this is generic

.PHONY: all
all: $(DIRS)
	#echo $(DIRS)

define PROGRAM_template
.PHONY: $1
$1:
	docker build -t box_$(strip $1) ./$(strip $1)
endef

$(foreach prog,$(DIRS), $(eval $(call PROGRAM_template, $(strip $(prog)))))

