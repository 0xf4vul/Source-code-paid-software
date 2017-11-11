.class final Lcom/google/android/gms/internal/adm$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/adm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/adm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/adm$4;->a:Lcom/google/android/gms/internal/adm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->m()Lcom/google/android/gms/internal/adn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/adm$4;->a:Lcom/google/android/gms/internal/adm;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/adm;->a:Landroid/content/Context;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/adm$4;->a:Lcom/google/android/gms/internal/adm;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/adm;->c:Ljava/lang/String;

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/adm$4;->a:Lcom/google/android/gms/internal/adm;

    .line 3000
    iget-object v3, v3, Lcom/google/android/gms/internal/adm;->d:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/adn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
