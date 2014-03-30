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

/**
 *
 * @author Kyle
 */
public class FeedbackFilter {
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
   

    public boolean PositiveFilter(ArrayList PosWords)
    {   
        return true;
    }

    public boolean NegativeFilter(ArrayList NegWords)
    {
        return false;
    }

    public boolean checkFilter(String content)
    {
        ArrayList positive = WordList("PositiveWords.txt"); // favor positive
        ArrayList negative = WordList("NegativeWords.txt");
        return PositiveFilter(positive) & NegativeFilter(negative);
    }
    
    
}
