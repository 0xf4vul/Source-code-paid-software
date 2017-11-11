.class public Lcom/avast/android/burger/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/android/burger/a/i$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/avast/a/b/a/a$g;


# direct methods
.method protected constructor <init>(Lcom/avast/android/burger/a/i$a;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/avast/android/burger/a/i$a;->a()Lcom/avast/a/b/a/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 60
    return-void
.end method

.method protected static a()Lcom/avast/android/burger/a/i$a;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/avast/android/burger/a/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/android/burger/a/i$a;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    invoke-static {v0}, Lcom/avast/android/burger/a/d;->d(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
