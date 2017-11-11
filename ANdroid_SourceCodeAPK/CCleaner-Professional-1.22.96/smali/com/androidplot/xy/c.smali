.class public final Lcom/androidplot/xy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/androidplot/a;

.field b:Lcom/androidplot/a;

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/androidplot/a;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/a;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/c;->a:Lcom/androidplot/a;

    .line 46
    new-instance v0, Lcom/androidplot/a;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/a;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/c;->b:Lcom/androidplot/a;

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/xy/c;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/androidplot/xy/c;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 53
    return-void
.end method
