.class public abstract Lcom/piriform/ccleaner/core/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lcom/piriform/ccleaner/core/a/g;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/piriform/ccleaner/core/a/r;


# direct methods
.method protected constructor <init>(Lcom/piriform/ccleaner/core/a/g;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/piriform/ccleaner/core/a/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/core/a/b;-><init>(Lcom/piriform/ccleaner/core/a/g;)V

    .line 1063
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end method

.method public a(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public a(Lcom/piriform/ccleaner/core/a/r;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/b;->d:Lcom/piriform/ccleaner/core/a/r;

    .line 43
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->d:Lcom/piriform/ccleaner/core/a/r;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->d:Lcom/piriform/ccleaner/core/a/r;

    invoke-interface {v0, p0, p1}, Lcom/piriform/ccleaner/core/a/r;->a(Lcom/piriform/ccleaner/core/a/b;Z)V

    .line 35
    :cond_0
    return-void
.end method
