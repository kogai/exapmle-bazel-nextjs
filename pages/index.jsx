import React from 'react'
import Link from 'next/link'

const Index = () => {
  return (
    <div>
      <Link href="/about">
        <a>about</a>
      </Link>{' '}
      page...
    </div>
  )
}

export default Index
