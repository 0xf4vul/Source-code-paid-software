.class public final Lcom/androidplot/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Number;

.field public b:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 29
    invoke-direct {p0, p1}, Lcom/androidplot/a;->b(Ljava/lang/Number;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/androidplot/a;->c(Ljava/lang/Number;)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-direct {p0, p2}, Lcom/androidplot/a;->b(Ljava/lang/Number;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/androidplot/a;->c(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Region values can never be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/androidplot/a;->a:Ljava/lang/Number;

    .line 89
    return-void
.end method

.method private c(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Region values can never be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/androidplot/a;->b:Ljava/lang/Number;

    .line 100
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Number;)Z
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/a;->a:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidplot/a;->b:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
