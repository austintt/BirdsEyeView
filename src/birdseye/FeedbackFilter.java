/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package birdseye;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author Kyle
 */
public class FeedbackFilter {
    private ArrayList positive;
    private ArrayList negative;
    public FeedbackFilter()
    {
      positive = WordList("PositiveWords.txt"); // favor positive
      negative = WordList("NegativeWords.txt"); 
    }
    private ArrayList WordList(String Filename)
    {
        ArrayList wordlist = new ArrayList();
        BufferedReader br = null;
        try {
 
	String sCurrentLine;
        br = new BufferedReader(new FileReader(Filename));
        while ((sCurrentLine = br.readLine()) != null) {
	        wordlist.add(sCurrentLine);
		}
            } catch (IOException e) 
            {
	      e.printStackTrace();
	    } finally 
            {
	      try { if (br != null)br.close();} 
              catch (IOException ex) {
			ex.printStackTrace();
			}
	    }
        return  wordlist;
 }
   

    public int PositiveFilter(ArrayList PosWords, String text)
    {   
        ArrayList<String> parsedText = new ArrayList<String>(Arrays.asList(text.split(" ")));
        int positiveWord = 0;
        for(int i = 0; i < parsedText.size(); i++)
        {
            for(int j = 0; j < PosWords.size(); j++)
            {
                if (parsedText.get(i).equals(PosWords.get(j)))
                    positiveWord++;
            }
        }
        return positiveWord;
    }

    public int NegativeFilter(ArrayList NegWords, String text)
    {
        ArrayList<String> parsedText = new ArrayList<String>(Arrays.asList(text.split(" ")));
        int negativeWord = 0;
        for(int i = 0; i < parsedText.size(); i++)
        {
            for(int j = 0; j < NegWords.size(); j++)
            {
                if (parsedText.get(i).equals(NegWords.get(j)))
                    negativeWord++;
            }
        }
        return negativeWord;
    }

    public boolean checkFilter(String content)
    {
        return PositiveFilter(positive, content) >= NegativeFilter(negative, content);
    }
    
    
}
