.class public interface abstract Lcom/google/android/gms/internal/ls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ls$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/ls;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/lr;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/google/android/gms/internal/lg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ls$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ls$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ls;->e:Lcom/google/android/gms/internal/lg;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;
.end method

.method public abstract a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
.end method

.method public abstract a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
.end method

.method public abstract a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;
.end method

.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract a(Z)Ljava/lang/Object;
.end method

.method public abstract a(Lcom/google/android/gms/internal/ls$a;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/google/android/gms/internal/lf;)Z
.end method

.method public abstract b(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/lf;
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method public abstract c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

.method public abstract f()Lcom/google/android/gms/internal/ls;
.end method

.method public abstract g()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/lr;",
            ">;"
        }
    .end annotation
.end method
