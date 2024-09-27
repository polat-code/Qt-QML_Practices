#include "gamemanager.h"
#include <QDebug>

GameManager::GameManager(QObject *parent)
    : QObject(parent), searchWord(nullptr)  // Initialize the pointer to nullptr
{
}

GameManager::~GameManager()
{
    delete searchWord;  // Ensure dynamic memory is released
}

Word* GameManager::startAGame()
{
    // Clean up the previous game
    if (searchWord) {
        delete searchWord;
    }

    // Example: Initialize the searchWord with a predefined word
    QVector<LetterWithColor*> word;

    // Get A Random Word from WordManager.
    QString randomWord = "Hello"; // WordManager

    for(int i = 0; i < randomWord.length();i++) {
        word.append(new LetterWithColor(QString(randomWord[i].toUpper()), LetterWithColor::BACKGROUND_COLOR::GRAY));
    }

    searchWord = new Word(word);  // Dynamically allocate memory for searchWord

    return searchWord;  // Return the word as the starting word of the game
}

bool GameManager::checkWordWhetherInWordList(QString word)
{
    // Check this from wordManager
    QStringList wordList = {"HELLO", "WORLD", "GAME", "CHECK"};
    return wordList.contains(word.toUpper());
}

Word* GameManager::checkSimilarity(QString userWord)
{
    QVector<LetterWithColor*> resultWord;
    QString targetWord = "";

    // Get target word from searchWord
    for(int i = 0; i < searchWord->getWord().length(); i++) {
        targetWord.append(searchWord->getWord()[i]->getLetter());
    }

    // Make both to uppercase.
    targetWord = targetWord.toUpper();
    userWord = userWord.toUpper();

    // TargetWord=searchWord HELLO, userWord=userInput GAME
    qDebug() << "TargetWord  : " + targetWord;
    qDebug() << "userWord  : " + userWord;

    for (int i = 0; i < userWord.length() && i < targetWord.length(); ++i)
    {
        LetterWithColor::BACKGROUND_COLOR color;
        if (userWord[i] == targetWord[i])
        {
            color = LetterWithColor::BACKGROUND_COLOR::GREEN;
        }
        else if (targetWord.contains(userWord[i]))
        {
            color = LetterWithColor::BACKGROUND_COLOR::YELLOW;
        }
        else
        {
            color = LetterWithColor::BACKGROUND_COLOR::GRAY;
        }

        resultWord.append(new LetterWithColor(QString(userWord[i]), color));  // Convert QChar to QString
    }

    return new Word(resultWord);  // Return a new dynamically created userWord
}


void GameManager::finishTheGame()
{
    // Game finish logic
    delete searchWord;
    searchWord = nullptr;
}

bool GameManager::checkGameIsOverOrNoT(Word* userColoredWord){

    for(int i = 0; i < userColoredWord->getWord().length(); i++) {
        qDebug() << static_cast<int>(userColoredWord->getWord()[i]->getColor());
        if(static_cast<int>(userColoredWord->getWord()[i]->getColor()) != 1 ) { //1 means LetterWithColor::BACKGROUND_COLOR::GREEN in enum
            return false;
        }
    }
    return true;
}

Word* GameManager::getSearchWord() const
{
    return searchWord;
}

void GameManager::setSearchWord(Word* value)
{
    if (searchWord) {
        delete searchWord;
    }
    searchWord = value;
}
