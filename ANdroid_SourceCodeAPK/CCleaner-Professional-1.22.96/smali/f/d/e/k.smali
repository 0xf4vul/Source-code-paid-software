.class public final Lf/d/e/k;
.super Lf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/e/k$d;,
        Lf/d/e/k$c;,
        Lf/d/e/k$b;,
        Lf/d/e/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "rx.just.strong-mode"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lf/d/e/k;->c:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lf/d/e/k$a;

    invoke-direct {v0, p1}, Lf/d/e/k$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lf/g/c;->a(Lf/d$a;)Lf/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lf/d;-><init>(Lf/d$a;)V

    .line 77
    iput-object p1, p0, Lf/d/e/k;->b:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static a(Lf/i;Ljava/lang/Object;)Lf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i",
            "<-TT;>;TT;)",
            "Lf/f;"
        }
    .end annotation

    .prologue
    .line 59
    sget-boolean v0, Lf/d/e/k;->c:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lf/d/b/c;

    invoke-direct {v0, p0, p1}, Lf/d/b/c;-><init>(Lf/i;Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lf/d/e/k$d;

    invoke-direct {v0, p0, p1}, Lf/d/e/k$d;-><init>(Lf/i;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Lf/d/e/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lf/d/e/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lf/d/e/k;

    invoke-direct {v0, p0}, Lf/d/e/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lf/g;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g;",
            ")",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    instance-of v0, p1, Lf/d/c/b;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lf/d/c/b;

    .line 99
    new-instance v0, Lf/d/e/k$1;

    invoke-direct {v0, p0, p1}, Lf/d/e/k$1;-><init>(Lf/d/e/k;Lf/d/c/b;)V

    .line 125
    :goto_0
    new-instance v1, Lf/d/e/k$b;

    iget-object v2, p0, Lf/d/e/k;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lf/d/e/k$b;-><init>(Ljava/lang/Object;Lf/c/e;)V

    invoke-static {v1}, Lf/d/e/k;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lf/d/e/k$2;

    invoke-direct {v0, p0, p1}, Lf/d/e/k$2;-><init>(Lf/d/e/k;Lf/g;)V

    goto :goto_0
.end method

.method public final d(Lf/c/e;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/e",
            "<-TT;+",
            "Lf/d",
            "<+TR;>;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lf/d/e/k$3;

    invoke-direct {v0, p0, p1}, Lf/d/e/k$3;-><init>(Lf/d/e/k;Lf/c/e;)V

    invoke-static {v0}, Lf/d/e/k;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method
