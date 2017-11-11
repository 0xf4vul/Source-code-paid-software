.class final Lcom/google/android/gms/internal/aau$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aau$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aau$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aau$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aau$2$2;->a:Lcom/google/android/gms/internal/aau$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/aau;->d()Lcom/google/android/gms/internal/wg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aau$2$2;->a:Lcom/google/android/gms/internal/aau$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/aau$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wg;->a(Ljava/lang/String;)V

    return-void
.end method
