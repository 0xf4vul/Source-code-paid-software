.class final Lcom/google/android/gms/internal/rd$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/rd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rd$2;->a:Lcom/google/android/gms/internal/rd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rd$2;->a:Lcom/google/android/gms/internal/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/rd;)V

    return-void
.end method
