#ifndef CPPSIGNALSENDER_H
#define CPPSIGNALSENDER_H

#include <QWidget>

class CppSignalSender : public QWidget
{
    Q_OBJECT
public:
    explicit CppSignalSender(QWidget *parent = nullptr);

signals:
    void callQml(QString paremeter);

public slots:
    void cppSlot();

};

#endif // CPPSIGNALSENDER_H
