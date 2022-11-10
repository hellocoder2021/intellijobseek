package com.intellijobseek.utility;

import java.io.File;

public class FolderService {

    public static boolean createFolder(String path, String dirname) {
        boolean flag = false;
        path = path + dirname;

        //Creating a File object
        System.out.println(path);
        File file = new File(path);

        //Creating the directory
//        boolean bool = file.mkdir();
        if (file.mkdir()) {
            flag = true;
            System.out.println("Directory created successfully");
        }
        return flag;
    }

    public static String getExtension(String filename) {
        File file = new File(filename);
        String fileName = file.toString();

        int index = fileName.lastIndexOf('.');
        String extension="";
        if (index > 0) {
            extension = fileName.substring(index + 1);
            System.out.println("File extension is " + extension);
        }
        return extension;
    }
}
