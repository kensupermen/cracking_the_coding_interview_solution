package com.kensupermen;

import java.util.Scanner;

/**
 * https://www.hackerearth.com/practice/algorithms/greedy/basics-of-greedy-algorithms/practice-problems/algorithm/fast-sort-1/
 */
public class FastSort {
    static char[] dictionary;
    static int[] loopChar;

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int n = s.nextInt();

        for (int i = 0; i < n; i++) {
            dictionary = s.next().toCharArray();
            loopChar = new int[26];
            String strInput = s.next();
            inputToProcess(strInput);
            getOutput(dictionary, strInput.toCharArray());
        }
    }

    private static void inputToProcess(String strInput) {
        for (int i = 0; i < strInput.length(); i++) {
            for (int j = 0; j < 26; j++) {
                if (strInput.charAt(i) == dictionary[j]) {
                    loopChar[j] += 1;
                    break;
                }
            }
        }
    }

    private static void getOutput(char[] dictionary, char[] strInput){
        for (int i = 0; i < 26; i++){
            if (loopChar[i] == 0) {
                continue;
            }
            for (int k = 0; k < loopChar[i]; k++) {
                System.out.print(dictionary[i]);
            }
        }
        System.out.println("\n");
    }
}
