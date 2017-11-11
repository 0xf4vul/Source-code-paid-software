.class public final Lcom/piriform/ccleaner/s/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/s/e;-><init>(I)V

    .line 11
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/piriform/ccleaner/s/e;->a:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/piriform/ccleaner/s/e;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/piriform/ccleaner/s/e;->a:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
