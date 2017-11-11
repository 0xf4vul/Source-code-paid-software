.class final Lcom/google/firebase/database/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ip;

.field final synthetic b:Lcom/google/firebase/database/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/k;Lcom/google/android/gms/internal/ip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/k$2;->b:Lcom/google/firebase/database/k;

    iput-object p2, p0, Lcom/google/firebase/database/k$2;->a:Lcom/google/android/gms/internal/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/k$2;->b:Lcom/google/firebase/database/k;

    iget-object v0, v0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    iget-object v1, p0, Lcom/google/firebase/database/k$2;->a:Lcom/google/android/gms/internal/ip;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/ip;)V

    return-void
.end method
