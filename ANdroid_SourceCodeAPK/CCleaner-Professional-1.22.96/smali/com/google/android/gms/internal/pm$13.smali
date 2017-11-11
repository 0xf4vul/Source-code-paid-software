.class final Lcom/google/android/gms/internal/pm$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/pn;

.field final synthetic b:Lcom/google/android/gms/internal/oi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/oi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pm$13;->a:Lcom/google/android/gms/internal/pn;

    iput-object p2, p0, Lcom/google/android/gms/internal/pm$13;->b:Lcom/google/android/gms/internal/oi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pm$13;->a:Lcom/google/android/gms/internal/pn;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/pn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pm$13;->b:Lcom/google/android/gms/internal/oi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
