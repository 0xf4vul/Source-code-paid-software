.class public final Lcom/google/android/gms/internal/fr;
.super Lcom/google/android/gms/common/api/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fr$b;,
        Lcom/google/android/gms/internal/fr$c;,
        Lcom/google/android/gms/internal/fr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/n",
        "<",
        "Lcom/google/android/gms/internal/ga$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ga$a;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ga;->b:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/firebase/g;

    invoke-direct {v1}, Lcom/google/firebase/g;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/internal/ap;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/gd;)Lcom/google/android/gms/internal/fr$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "CallbackT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gd",
            "<TResultT;TCallbackT;>;)",
            "Lcom/google/android/gms/internal/fr$b",
            "<TResultT;TCallbackT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/fr$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fr$b;-><init>(Lcom/google/android/gms/internal/gd;)V

    return-object v0
.end method
