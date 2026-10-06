
If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bars
echo "---" | tee -a /tmp/polybar.log
polybar transparent 2>&1 | tee -a /tmp/polybar.log & disown

polybar sysXworkspaces 2>&1 | tee -a /tmp/polybar.log & disown

polybar network 2>&1 | tee -a /tmp/polybar.log & disown
polybar pulseaudio 2>&1 | tee -a /tmp/polybar.log & disown
polybar battery 2>&1 | tee -a /tmp/polybar.log & disown
polybar date 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars launched..."
