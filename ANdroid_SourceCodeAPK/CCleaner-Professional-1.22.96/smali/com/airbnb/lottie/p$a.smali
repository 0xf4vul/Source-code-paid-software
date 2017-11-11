.class final Lcom/airbnb/lottie/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/bf;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/airbnb/lottie/cg;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/cg;)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/p$a;->a:Ljava/util/List;

    .line 260
    iput-object p1, p0, Lcom/airbnb/lottie/p$a;->b:Lcom/airbnb/lottie/cg;

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/cg;B)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/p$a;-><init>(Lcom/airbnb/lottie/cg;)V

    return-void
.end method
