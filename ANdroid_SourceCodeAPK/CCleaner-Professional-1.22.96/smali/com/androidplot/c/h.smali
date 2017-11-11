.class public final Lcom/androidplot/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/androidplot/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidplot/c/i",
        "<TKeyType;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/androidplot/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/c/j",
            "<TKeyType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TKeyType;TValueType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/c/h;->b:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/androidplot/c/j;

    invoke-direct {v0}, Lcom/androidplot/c/j;-><init>()V

    iput-object v0, p0, Lcom/androidplot/c/h;->a:Lcom/androidplot/c/j;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androidplot/c/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TKeyType;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/androidplot/c/h;->a:Lcom/androidplot/c/j;

    return-object v0
.end method
