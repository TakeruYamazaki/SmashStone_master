//==================================================================================================================
//
// マップ選択の描画 [mapSelect.cpp]
// Author : Seiya Takahashi
//
//==================================================================================================================
#define _CRT_SECURE_NO_WARNINGS											// 警告回避文

//==================================================================================================================
//	インクルードファイル
//==================================================================================================================
#include "tutorial.h"
#include "renderer.h"
#include "inputKeyboard.h"
#include "fade.h"
#include "sound.h"
#include "scene2D.h"
#include "scene3D.h"
#include "camera.h"
#include "light.h"
#include "inputGamepad.h"
#include "UI_mapSelect.h"
#include "game.h"
#include "mapSelect.h"

//==================================================================================================================
//	静的メンバ変数宣言
//==================================================================================================================
LPDIRECT3DTEXTURE9 CMapSelect::m_pTexture = NULL;		// テクスチャ情報
CCamera *CMapSelect::m_pCamera = NULL;					// カメラ情報
CLight *CMapSelect::m_pLight = NULL;					// ライト情報
CUI_mapSelect *CMapSelect::m_pUI = NULL;				// UI情報

//==================================================================================================================
//	コンストラクタ
//==================================================================================================================
CMapSelect::CMapSelect()
{

}

//==================================================================================================================
//	デストラクタ
//==================================================================================================================
CMapSelect::~CMapSelect()
{

}

//==================================================================================================================
//	初期化処理
//==================================================================================================================
void CMapSelect::Init(void)
{
	m_bSelectMap = false;			// マップが選択されているかどうか

	CUI_mapSelect::Load();			// UIテクスチャロード

	// カメラの生成処理
	m_pCamera = CCamera::Create();

	// ライトの生成処理
	m_pLight = CLight::Create();

	// UI生成処理
	m_pUI = CUI_mapSelect::Create();
}

//==================================================================================================================
//	終了処理
//==================================================================================================================
void CMapSelect::Uninit(void)
{
	// scene2Dの破棄処理
	CScene2D::ReleaseAll();

	// scene3Dの破棄処理
	CScene3D::ReleaseAll();

	CUI_mapSelect::Unload();		// UIテクスチャアンロード

	delete m_pLight;				// メモリ削除
	m_pLight = nullptr;				// ポインタNULL

	delete m_pCamera;				// メモリ削除
	m_pCamera = nullptr;			// ポインタNULL
}

//==================================================================================================================
//	更新処理
//==================================================================================================================
void CMapSelect::Update(void)
{
	// キーボード取得
	CInputKeyboard *pInputKeyboard = CManager::GetInputKeyboard();

	// ゲームパッド取得
	CInputGamepad *pGamepad = CManager::GetInputGamepad(0);

	// フェード取得
	CFade::FADE fade = CFade::GetFade();

	// マップの選択状況取得
	m_bSelectMap = m_pUI->GetSelectMap();

	// カメラの更新処理
	m_pCamera->Update();

	// ライトの更新処理
	m_pLight->Update();

	// マップが選択されているとき
	if (m_bSelectMap)
	{
		// フェードが何もない時
		if (fade == CFade::FADE_NONE)
		{
			CGame::SetStageType(CUI_mapSelect::GetMapID());
			// フェードの設定
			CFade::SetFade(CRenderer::MODE_GAME, DEFAULT_FADE_TIME);
		}
	}
	else
	{
		// 1Pが戻るボタンを押したとき
		if (pInputKeyboard->GetKeyboardPress(ONE_JUMP) || pGamepad->GetPress(CInputGamepad::JOYPADKEY_B))
		{
			// フェードが何もない時
			if (fade == CFade::FADE_NONE)
			{
				// フェードの設定
				CFade::SetFade(CRenderer::MODE_TUTORIAL, DEFAULT_FADE_TIME);
			}
		}
	}
}

//==================================================================================================================
//	描画処理
//==================================================================================================================
void CMapSelect::Draw(void)
{
	// カメラの設定
	m_pCamera->SetCamera();

	// カメラの描画処理
	m_pCamera->Draw();
}

//==================================================================================================================
// オブジェクトの生成
//==================================================================================================================
CMapSelect * CMapSelect::Create(void)
{
	CMapSelect *pMapSelect = NULL;		// チュートリアル情報をNULLにする

	pMapSelect = new CMapSelect;		// 動的に確保
	pMapSelect->Init();					// 初期化処理

	return pMapSelect;					// 値を返す
}
