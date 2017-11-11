.class public final Lcom/androidplot/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/androidplot/b/l;

.field public b:Lcom/androidplot/b/l;


# direct methods
.method public constructor <init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/androidplot/b/l;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/b/l;-><init>(FLcom/androidplot/b/k;)V

    iput-object v0, p0, Lcom/androidplot/b/m;->a:Lcom/androidplot/b/l;

    .line 38
    new-instance v0, Lcom/androidplot/b/l;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/b/l;-><init>(FLcom/androidplot/b/k;)V

    iput-object v0, p0, Lcom/androidplot/b/m;->b:Lcom/androidplot/b/l;

    .line 39
    return-void
.end method
