.class public Lcom/androidplot/c/j;
.super Ljava/util/LinkedList;
.source "SourceFile"

# interfaces
.implements Lcom/androidplot/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TType;>;",
        "Lcom/androidplot/c/i",
        "<TType;>;"
    }
.end annotation


# instance fields
.field public l:Lcom/androidplot/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/c/d",
            "<TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 29
    new-instance v0, Lcom/androidplot/c/d;

    invoke-direct {v0, p0}, Lcom/androidplot/c/d;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TType;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 1110
    iget-object v0, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    .line 65
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 1034
    iget-object v1, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1036
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1038
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_0
.end method
