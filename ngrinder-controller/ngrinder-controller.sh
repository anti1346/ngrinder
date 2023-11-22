#!/bin/bash

NGRINDER_VERSION="3.5.8"
NGRINDER_WAR_FILE="ngrinder-controller-$NGRINDER_VERSION.war"

WORK_DIR="$HOME/ngrinder/ngrinder-controller"

SERVICE_PORT="7070"

LOG_DIR="$WORK_DIR/logs"
LOG_FILE="$LOG_DIR/ngrinder-$(date '+%Y%m%d-%H%M%S').log"

start() {
    mkdir -p "$LOG_DIR"
    nohup java -jar "$WORK_DIR/$NGRINDER_WAR_FILE" --port "$SERVICE_PORT" > "$LOG_FILE" 2>&1 &
    echo "nGrinder Controller started. Log file: $LOG_FILE"
}

status() {
    if pgrep -f "$NGRINDER_WAR_FILE" >/dev/null; then
        echo "nGrinder Controller is running."
    else
        echo "nGrinder Controller is not running."
    fi
}

stop() {
    if pgrep -f "$NGRINDER_WAR_FILE" >/dev/null; then
        pkill -f "$NGRINDER_WAR_FILE"
        echo "nGrinder Controller stopped."
    else
        echo "No nGrinder Controller process found."
    fi
}

case "$1" in
    start)
        start
        ;;
    status)
        status
        ;;
    stop)
        stop
        ;;
    *)
        echo "Usage: $0 {start|stop|status}"
        exit 1
        ;;
esac
