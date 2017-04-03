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
 * @student Kenny Nguyen
 */

public class ChunkServer implements ChunkServerInterface {
	/*
	 * filePath the directory in which multiple chunks can be created/stored?
	 */
	final static String filePath = "/Users/Kenny/Desktop/Repositories/csci485";	//or C:\\newfile.txt
	
	//Use this counter to keep track of Chunks.
	public static long counter;
	
	/**
	 * Initialize the chunk server
	 */
	public ChunkServer(){
		/*
		 * File System Array to store individual files & chunks
		System.out.println("Constructor of ChunkServer is invoked:  Part 1 of TinyFS must implement the body of this method.");
		System.out.println("It does nothing for now.\n");
		 *
		 *
		*/
		File dir = new File(filePath);
		File[] fs = dir.listFiles();

		if(fs.length == 0){
			counter = 0;
		}else{
			long[] cntrs = new long[fs.length];
			for (int j=0; j < cntrs.length; j++)
				cntrs[j] = Long.valueOf( fs[j].getName() ); 
			
			Arrays.sort(cntrs);
			counter = cntrs[cntrs.length - 1];
		}
	}
	
	/**
	 * Each chunk corresponds to a file.
	 * Return the chunk handle of the last chunk in the file.
	 */
	public String createChunk() {
		//Iterate for a chunk; return the number of chunks
		counter++;
		
		/*
		 * Create Chunk Unique -- Client asks the chunk to r/w; 
		 * should return a chunk if the client needs it
		 * Return a string of a number.
		 * http://stackoverflow.com/questions/3930210/java-int-to-string-integer-tostringi-vs-new-integeri-tostring
		 */
		return String.valueOf(counter);
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
		 * Treat a chunk as an array of bytes per in-class lectures/discussions
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
