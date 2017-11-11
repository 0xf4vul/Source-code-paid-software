.class public final Lcom/androidplot/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/androidplot/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/androidplot/b/r;

.field public b:Lcom/androidplot/b/t;

.field public c:Lcom/androidplot/b/a;

.field private d:F


# direct methods
.method public constructor <init>(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/androidplot/b/r;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/b/r;-><init>(FLcom/androidplot/b/q;)V

    .line 1065
    iput-object v0, p0, Lcom/androidplot/b/h;->a:Lcom/androidplot/b/r;

    .line 28
    new-instance v0, Lcom/androidplot/b/t;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/b/t;-><init>(FLcom/androidplot/b/s;)V

    .line 2038
    iput-object v0, p0, Lcom/androidplot/b/h;->b:Lcom/androidplot/b/t;

    .line 2046
    iput-object p5, p0, Lcom/androidplot/b/h;->c:Lcom/androidplot/b/a;

    .line 31
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 19
    check-cast p1, Lcom/androidplot/b/h;

    .line 2051
    iget v0, p0, Lcom/androidplot/b/h;->d:F

    iget v1, p1, Lcom/androidplot/b/h;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2052
    const/4 v0, -0x1

    .line 2054
    :goto_0
    return v0

    .line 2053
    :cond_0
    iget v0, p0, Lcom/androidplot/b/h;->d:F

    iget v1, p1, Lcom/androidplot/b/h;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2054
    const/4 v0, 0x0

    goto :goto_0

    .line 2056
    :cond_1
    const/4 v0, 0x1

    .line 19
    goto :goto_0
.end method
