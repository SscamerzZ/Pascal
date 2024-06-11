import MySQLdb as mdb
from PyQt6.QtWidgets import QMessageBox

db = mdb.connect(host='localhost', user ='root', password='', database ='Rylon')

class QwSql():
    def userProcess(self, idModel, batchCount):
        cur = db.cursor()
        rows = cur.execute(f"call OrderFabrication('{idModel}','{batchCount}')" )
        data_qw = cur.fetchall()
        print(data_qw[0][0])
        cur.close()
        db.commit()
        return data_qw

from PyQt6 import QtWidgets
from form import Ui_Form

class Main(QtWidgets.QMainWindow, Ui_Form):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.zakaz)

        for i in self.namemodel():
            print(i)
            self.comboBox.addItem(str(i[1]))
            self.comboBox.setPlaceholderText(str(i[0]))
    def namemodel(self):
        cur = db.cursor()
        rows = cur.execute(f"SELECT id, name FROM model")
        data_qw = cur.fetchall()
        print(data_qw[0][0])
        cur.close()
        db.commit()
        return data_qw

    def zakaz(self):
        try:
            cur = db.cursor()
            qw = QwSql()
            idModel = self.comboBox.placeholderText()
            batchCount = self.lineEdit.text()
            print(idModel)
            data = qw.userProcess(idModel, batchCount)
            print(data)
            self.label.setText(f"Итог: {data}")

        except Exception as e:
            print(e)



if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    wind = Main()
    wind.show()
    sys.exit(app.exec())