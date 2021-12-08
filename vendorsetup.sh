if [ -z ${variant} ]; then
  export variant="userdebug";
fi

for combo in $(ls vendor/kasumi/products/kasumi_*.mk | sed -e 's/vendor\/kasumi\/products\///' -e "s/.mk/-$variant/")
do
add_lunch_combo ${combo}
done

