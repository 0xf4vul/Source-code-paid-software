.class public final Lcom/androidplot/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/androidplot/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElementType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidplot/c/i",
        "<TElementType;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TElementType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TElementType;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/androidplot/c/d;->a:Ljava/util/List;

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
            "<TElementType;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    return-object v0
.end method
