.class public final Lcom/avast/android/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/a/c;

.field public final b:Lcom/google/a/c;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/google/a/c;Lcom/google/a/c;J)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/avast/android/c/a/a;->a:Lcom/google/a/c;

    .line 15
    iput-object p2, p0, Lcom/avast/android/c/a/a;->b:Lcom/google/a/c;

    .line 16
    iput-wide p3, p0, Lcom/avast/android/c/a/a;->c:J

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/avast/android/c/a/a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
