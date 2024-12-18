# This Python file uses the following encoding: utf-8
import sys
from PySide6.QtWidgets import QApplication, QWidget, QLabel


if __name__ == "__main__":
    app = QApplication(sys.argv)

    # Build the window widget
    w = QWidget()
    w.setGeometry(300, 300, 250, 150)  # x, y, w, h
    w.setWindowTitle("My First Qt App")

    # Add a label with tooltip
    label = QLabel("Hello World", w)
    label.setToolTip("This is a <b>QLabel</b> widget with Tooltip. run in docker")
    label.resize(label.sizeHint())
    label.move(80, 50)

    # Show window and run
    w.show()
    app.exec()