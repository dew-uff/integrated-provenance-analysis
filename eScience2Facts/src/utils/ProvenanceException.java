/**
 * e-Science Central
 * Copyright (C) 2008-2013 School of Computing Science, Newcastle University
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * version 2 as published by the Free Software Foundation at:
 * http://www.gnu.org/licenses/gpl-2.0.html
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, 5th Floor, Boston, MA 02110-1301, USA.
 */
package utils;

/**
 * This is the base exception class for all ejbs
 *
 * @author hugo
 */
public class ProvenanceException extends Exception
{
    /**
     * Class version UID.
     *
     * Please increment this value whenever your changes may cause
     * incompatibility with the previous version of this class. If unsure, ask
     * one of the core development team or read:
     *   http://docs.oracle.com/javase/6/docs/api/java/io/Serializable.html
     * and
     *   http://docs.oracle.com/javase/6/docs/platform/serialization/spec/version.html#6678
     */
    private static final long serialVersionUID = 1L;


    /**
     * Creates a new instance of <code>ProvenanceException</code> without detail message.
     */
    public ProvenanceException()
    {
    }


    /**
     * Constructs an instance of <code>ProvenanceException</code> with the specified detail message.
     *
     * @param msg the detail message.
     */
    public ProvenanceException(String msg)
    {
        super(msg);
    }


    public ProvenanceException(Throwable t)
    {
        super(t);
    }


    public ProvenanceException(String message, Throwable t)
    {
        super(message, t);
    }


    public ProvenanceException(String messageFormat, Object... args)
    {
        super(String.format(messageFormat, args));
    }


    public ProvenanceException(String messageFormat, Throwable t, Object... args)
    {
        super(String.format(messageFormat, args), t);
    }


}
