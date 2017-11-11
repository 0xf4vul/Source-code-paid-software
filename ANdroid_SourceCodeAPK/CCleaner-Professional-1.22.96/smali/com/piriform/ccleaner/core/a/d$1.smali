.class final Lcom/piriform/ccleaner/core/a/d$1;
.super Lcom/piriform/ccleaner/f/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/piriform/ccleaner/core/a/d;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/core/a/d;Z)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/d$1;->c:Lcom/piriform/ccleaner/core/a/d;

    iput-boolean p2, p0, Lcom/piriform/ccleaner/core/a/d$1;->b:Z

    invoke-direct {p0}, Lcom/piriform/ccleaner/f/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/a/d$1;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/piriform/ccleaner/core/d$a;->a:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/piriform/ccleaner/core/d$a;->b:I

    goto :goto_0
.end method
