.class public final Lcom/airbnb/lottie/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/airbnb/lottie/ax;->c:I

    .line 17
    iput p2, p0, Lcom/airbnb/lottie/ax;->d:I

    .line 18
    iput-object p3, p0, Lcom/airbnb/lottie/ax;->a:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/airbnb/lottie/ax;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/ax;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
