#ifndef GAMEMANAGER_H
#define GAMEMANAGER_H

#include <QObject>
#include "word.h"

class GameManager : public QObject
{
    Q_OBJECT
public:
    explicit GameManager(QObject *parent = nullptr);
    ~GameManager();  // Destructor to manage dynamic memory

    Q_INVOKABLE Word* startAGame();
    Q_INVOKABLE bool checkWordWhetherInWordList(QString word);
    Q_INVOKABLE Word* checkSimilarity(QString word);
    Q_INVOKABLE void finishTheGame();
    Q_INVOKABLE bool checkGameIsOverOrNoT(Word* userColoredWord);

    Word* getSearchWord() const;
    void setSearchWord(Word* value);

private:
    Word* searchWord;  // Use a pointer to Word
};

#endif // GAMEMANAGER_H
