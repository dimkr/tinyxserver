include ../standard_definitions.mk

fonts:
	for i in *.bdf; do bdftopcf -t $$i > $$(echo $$i | sed s/bdf/pcf/); done

clean:
	rm -f *.pcf