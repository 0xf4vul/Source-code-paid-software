.class public abstract Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cc$d;,
        Lcom/google/android/gms/internal/cc$c;,
        Lcom/google/android/gms/internal/cc$b;,
        Lcom/google/android/gms/internal/cc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/cc;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cc;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/cc;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/cg;->a()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/cd;->a:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/google/android/gms/internal/cc$b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cc$b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cc$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;J)Lcom/google/android/gms/internal/cc$c;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/cc$c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cc$c;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/cf;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/cf;",
            ")TT;"
        }
    .end annotation
.end method
