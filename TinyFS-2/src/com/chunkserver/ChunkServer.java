package com.chunkserver;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
//import java.util.Arrays;


import com.interfaces.ChunkServerInterface;

/**
 * implementation of interfaces at the chunkserver side
 * @author Shahram Ghandeharizadeh
 *
 */

public class ChunkServer implements ChunkServerInterface {
	/*
	 * filePath the directory in which multiple chunks can be created/stored?
	 */
	final static String filePath = "/Users/Kenny/Desktop/Repositories/csci485";	//or C:\\newfile.txt
	public static long counter;
	
	/**
	 * Initialize the chunk server
	 */
	public ChunkServer(){
		System.out.println("Constructor of ChunkServer is invoked:  Part 1 of TinyFS must implement the body of this method.");
		System.out.println("It does nothing for now.\n");
		
		/*
		 * Open the FilePath Directory
		 * Create an Accessible File Array using the Directory
		 * 
		 * Do Something
		 */
	}
	
	/**
	 * Each chunk corresponds to a file.
	 * Return the chunk handle of the last chunk in the file.
	 */
	public String createChunk() {
		System.out.println("createChunk invoked:  Part 1 of TinyFS must implement the body of this method.");
		System.out.println("Returns null for now.\n");
		return null;
	}
	
	/**
	 * Write the byte array to the chunk at the specified offset at provided payload
	 * The byte array size should be no greater than 4KB
	 */
	public boolean writeChunk(String ChunkHandle, byte[] payload, int offset) {
		
		//Use a Random Access File; Create if Non-Existent
		//https://docs.oracle.com/javase/8/docs/api/java/io/RandomAccessFile.html
		try {
			//Use RW mode for Read / Write
			RandomAccessFile raf = new RandomAccessFile(filePath + ChunkHandle, "rw");
			
			/* SPECIFIED OFFSET
			 * seek(long pos) 
			 * Sets the file-pointer offset, 
			 * measured from the beginning of this file, 
			 * at which the next read or write occurs.
			 */
			raf.seek(offset);
			
			/*
			 * write(byte[] b, int off, int len)
			 * Writes length bytes from the specified byte array starting at offset off to this file.
			 * Note: Use offset zero in function because of Seek function previously used
			 */
			raf.write(payload, 0, payload.length);
			
			/*
			 * Close the Random Access File stream after writing.
			 */
			raf.close();
		
			return true;
		} catch (IOException ioe){
		
			ioe.printStackTrace();
			return false;
		}
	}
	
	/**
	 * read the chunk at the specific offset
	 */
	public byte[] readChunk(String ChunkHandle, int offset, int NumberOfBytes) {
		
		/* ADVICE
		 ***Treat a chunk as an array of bytes per in-class lectures/discussions
		 */
		try {
			/* Base Case
			 * if a File doesn't exist then we cannot read; return null.
			 * else read file
			 */
			if (new File(filePath + ChunkHandle).exists() == false) {
				return null;
			} else {
				byte[] byteArray = new byte[NumberOfBytes];
			
				RandomAccessFile raf = new RandomAccessFile(filePath + ChunkHandle, "rw");
				raf.seek(offset);
				
				/* readFully or read
				 * 
				 * read(byte[] b, int off, int len)
				 * Reads up to len bytes of data from this file into an array of bytes.
				 */
				raf.read(byteArray, 0, NumberOfBytes);
				raf.close();
				
				return byteArray;
			}
			//return "Array of Bytes"
		} catch (IOException ioe) {
			ioe.printStackTrace();
			return null;
			
		}
	}
	
	

}
