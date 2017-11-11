.class public abstract Lcom/piriform/ccleaner/core/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v0, Lcom/piriform/ccleaner/core/d$a;->a:I

    iput v0, p0, Lcom/piriform/ccleaner/core/d;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/piriform/ccleaner/core/d;->a:I

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/d;->a()I

    move-result v0

    sget v1, Lcom/piriform/ccleaner/core/d$a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
