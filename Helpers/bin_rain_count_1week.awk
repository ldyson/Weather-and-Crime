# NR stands for "Number Row" so I can treat the headers differently
# '\' says to include the next line in this command as well
NR == 1 {
	print $0  \
	",rain_1week_count_=0" \
	",rain_1week_count_1_to_5" \
	",rain_1week_count_5_to_10" \
	",rain_1week_count_10_to_20" \
	",rain_1week_count_20_to_24" \
	",rain_1week_count_24_to_30" \
	",rain_1week_count_30_to_36" \
	",rain_1week_count_37_to_47" \
	",rain_1week_count_48_to_57" \
	",rain_1week_count_58_to_65" \
	",rain_1week_count_66_to_72" \
	",rain_1week_count_73_to_96" \
	",rain_1week_count_97_to_120" \
	",rain_1week_count_121_to_144" \
	",rain_1week_count_145_to_168"
#        ",count_=0" \
#        ",count_1_to_5" \
#        ",count_5_to_10" \
#        ",count_10_to_20" \
#        ",count_20_to_24" \
#        ",count_24_to_30" \
#        ",count_30_to_36" \
#        ",count_37_to_47" \
#        ",count_48_to_57" \
#        ",count_58_to_65" \
#        ",count_66_to_72" \
#        ",count_73_to_96" \
#        ",count_97_to_120" \
#        ",count_121_to_144" \
#        ",count_145_to_168"

}
(NR > 1) {
	print $0 \
	"," ($35 == 0 ? 1 : 0) \
	"," (0 < $35 && $35 <= 5 ? 1 : 0) \
	"," (5 < $35 && $35 <= 10 ? 1 : 0) \
	"," (10 < $35 && $35 <= 20 ? 1 : 0) \
	"," (20 < $35 && $35 <= 24 ? 1 : 0) \
	"," (24 < $35 && $35 <= 30 ? 1 : 0) \
	"," (30 < $35 && $35 <= 36 ? 1 : 0) \
	"," (36 < $35 && $35 <= 47 ? 1 : 0) \
	"," (47 < $35 && $35 <= 57 ? 1 : 0) \
	"," (57 < $35 && $35 <= 65 ? 1 : 0) \
	"," (65 < $35 && $35 <= 72 ? 1 : 0) \
	"," (73 < $35 && $35 <= 96 ? 1 : 0) \
	"," (96 < $35 && $35 <= 120 ? 1 : 0) \
	"," (120 < $35 && $35 <= 144 ? 1 : 0) \
	"," (144 < $35 && $35 <= 168 ? 1 : 0)
}
