.class final Lcom/piriform/ccleaner/appmanager/AppManagerActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$6;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$6;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->j(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 243
    return-void
.end method
