package com.aide.codemodel.api;

import java.io.IOException;
import java.io.Reader;

class LineEndingNormalizedReader extends Reader {
    private Reader reader;
    private boolean rseen;

    public LineEndingNormalizedReader(Reader reader) {
        this.reader = reader;
        this.rseen = false;
    }

    @Override
    public int read(char[] cbuf, int off, int len) throws IOException {
        int readlen = this.reader.read(cbuf, off, len);
        if (readlen == -1) {
            return -1;
        } else {
            boolean rseen = this.rseen;
            int destoff = off;
            int srcoff = off;
            int maxoff = off + readlen;

            while (srcoff < maxoff) {
                char c = cbuf[srcoff++];
                switch (c) {
                    case '\n':
                        if (!rseen) {
                            cbuf[destoff++] = '\n';
                        }

                        rseen = false;
                        break;
                    case '\r':
                        cbuf[destoff++] = '\n';
                        rseen = true;
                        break;
                    default:
                        cbuf[destoff++] = c;
                        rseen = false;
                }
            }

            this.rseen = rseen;
            return destoff - off;
        }
    }

    @Override
    public void close() throws IOException {
        this.reader.close();
        this.reader = null;
    }
}
