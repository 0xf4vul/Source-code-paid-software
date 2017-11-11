.class public final Lcom/piriform/ccleaner/core/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/c;)Lcom/piriform/ccleaner/ui/b/n;
    .locals 2

    .prologue
    .line 10
    .line 1088
    iget-boolean v0, p1, Lcom/piriform/ccleaner/a/c;->r:Z

    .line 10
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/ui/b/n;

    const v1, 0x7f03005b

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/ui/b/n;-><init>(Lcom/piriform/ccleaner/a/c;I)V

    .line 13
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/ui/b/n;

    const v1, 0x7f03005d

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/ui/b/n;-><init>(Lcom/piriform/ccleaner/a/c;I)V

    goto :goto_0
.end method
